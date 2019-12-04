class MessagesController < ApplicationController
  def index
  end

  def show
    @group = Group.find(params[:group_id])
    redirect_to group_path(@group)
  end

  def new
  end

  def create
    @group = Group.find(params[:group_id])
    @message = Message.new(message_params)
    @user = current_user
    @message.user = @user
    @message.group = @group
    if @message.save
      Pusher.trigger('comment-channel','new-comment', {
        message: {
          content: @message.content,
          name: @message.user.first_name,
          group_name: @message.group.name,
          photo: @message.user.photo.key,
          id: @message.id
      }})
      create_unread_message
    else
      render :new
    end
  end

  def edit
  end

  def update
    @message = Message.find(params[:id])
    @group = @message.group
    if @message.update(message_params)
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @group = @message.group
    @message.show = false
    if @message.save
      Pusher.trigger('comment-channel','delete-comment', {
        message: {
          id: @message.id
      }})
    else
      render :new
    end
  end

  private

  def create_unread_message
    @group = Group.find(params[:group_id])
    @group.users.each do |user|
      if (@read_message = ReadMessage.find_by(user: user, group: @group))
        @read_message.update(no_of_read_messages: @group.messages.count)
      else
        @read_message = ReadMessage.new(no_of_read_messages: @group.messages.count)
        @read_message.user = current_user
        @read_message.group = @group
        @read_message.save!
      end
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
