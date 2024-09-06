class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @emission_sources = EmissionSource.all
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry, notice: "Entry was successfully created."
    else
      render :new
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:emission_source_id, :quantity, :start_date, :end_date, :user_name)
  end
end
