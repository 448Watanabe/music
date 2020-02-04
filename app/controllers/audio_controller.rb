class AudioController < ApplicationController
    def index
        @audios = Audio.all
    end

    def new
        @audio = Audio.new
    end

    def show
        @audio = Audio.find(params[:id])
    end
    
    def create
        # if params[:audio].nil? # このバリデーションはpresent: trueで解消されない?
        #     flash[:error] = "ファイルが選択されてません"
        #     return render "new"
        # end
        @audio = Audio.new(audio_params(params))
        if @audio.save # ビックリマークが付くと例外になる
            flash[:success] = "新規作成成功"
            redirect_to audio_index_path
        else
          flash[:error] = '新規作成エラー'
          render "new"
        end
    end

    def edit
        logger.debug "++++++++++++++"
        logger.debug @audio = Audio.find(params[:id])
        logger.debug "++++++++++++++"
    end

    def update
        logger.debug "++++++++++++++"
        logger.debug @audio = Audio.find(params[:id])
        logger.debug "++++++++++++++"
        if @audio.update(audio_params(params))
            flash[:success] = "編集成功"
            redirect_to @audio # showに
        else
            flash[:error] = "編集エラー"
            redirect_to "edit"
        end
        
    end

    def destroy
        logger.debug "++++++++++++++"
        logger.debug @audio = Audio.find(params[:id])
        logger.debug "++++++++++++++"
        if @audio.destroy
            flash[:success] = "消去成功"
            redirect_to audio_index_path # showに
        else
            flash[:error] = "編集エラー"
            redirect_to audio_index_path
        end
    end

    def audio_params(params)
        params.require(:audio).permit(:file, :name, :singer, :note, :url, :category)
    end

end
