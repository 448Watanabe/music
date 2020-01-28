class AudioController < ApplicationController
    def index
        @audios = Audio.all
    end

    def new
        @audio = Audio.new
    end
    
    def create
        # if params[:audio].nil? # このバリデーションはpresent: trueで解消されない?
        #     flash[:error] = "ファイルが選択されてません"
        #     return render "new"
        # end
        @audio = Audio.new(audio_params(params))
        if @audio.save!
            redirect_to audio_index_path
        else
          flash[:error] = 'Errorですよ'
          render "new"
        end
    end

    def audio_params(params)
        params.require(:audio).permit(:file, :name, :singer, :note, :url, :category)
    end

end
