class PostsController < ApplicationController
  def new
    @post = Post.new
  end

def create
  @post = Post.new(post_params)

  prompt = <<~PROMPT
    You are an expert LinkedIn content writer.
    Write exactly ONE LinkedIn post based on the following criteria:

    ✍️ Notes: #{@post.notes}
    🎭 Tone: #{@post.tone}
    📏 Length: #{@post.length_option}
    🔖 Include Hashtags: #{@post.hashtags}

    Rules:
    - Write as if it’s a real LinkedIn post.
    - Add emojis naturally to match the tone.
    - If "Include Hashtags" = Yes, include relevant hashtags at the end.
    - Keep it professional yet more fun and engaging.
    - Do NOT give multiple options.
    - Do NOT add explanations or commentary.
    - Output only the LinkedIn post text.
  PROMPT

  @post.generated_text = RubyLLM.chat(model: "gemini-2.5-flash").ask(prompt).content

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
