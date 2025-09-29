class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.generated_text = RubyLLM.chat(model: "gemini-2.5-flash").ask("Generate only one Linkedin post from this text: #{@post.notes} with all of the critereia mentioned
    1. Tone = #{@post.tone}
    2. Length = #{@post.length_option}
    3. Include hastags? = #{@post.hashtags}
    do not give me any options only give me one and just give me the linkedin post content with some emoji looking at the tone and nothing else and do not write anything else.").content
      if @post.save
        redirect_to post_path(@post), notice: "Post was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:notes, :tone, :length_option, :hashtags)
  end
end
