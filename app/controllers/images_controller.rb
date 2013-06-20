class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def edit
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to images_url, notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to images_url, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end
end
