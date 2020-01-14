class MusicController < ApplicationController
    def index
        @list = Song.all
        logger.debug @list.inspect
    end

    def new
        @song = Song.new
    end

    def create
        @song= Song.new(song_params(params))
        if @song.save
            redirect_to :root
        else
            flash[:error]="Errorですよー"
            render :new
        end
    end

    def song_params(params)
        params.require(:song).permit(:name, :singer, :note, :url, :file, :category)
    end
end
