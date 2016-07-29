class ManagerNotesController < ApplicationController
  before_action :set_manager_note, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @manager_notes = ManagerNote.all.order('created_at DESC')
    respond_with(@manager_notes)
  end

  def show
    respond_with(@manager_note)
  end

  def new
    @manager_note = ManagerNote.new
    respond_with(@manager_note)
  end

  def edit
  end

  def create
    @manager_note = ManagerNote.new(manager_note_params)
    if @manager_note.save
      redirect_to manager_notes_path, notice: 'Your email was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @members = Member.all
    @manager_note.update(manager_note_params)
    respond_to do |format|
      if @manager_note.save
        # Tell the UserMailer to send a welcome email after save
        MemberMailer.sample_email(Member).deliver
 
        format.html { redirect_to(manager_notes_path, notice: 'Your email was successfully sent to the Dive VIPs.') }
        format.json { render json: manager_notes_path, status: :created, location: @manager_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @manager_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @manager_note.destroy
    respond_with(@manager_note)
  end

  private
    def set_manager_note
      @manager_note = ManagerNote.find(params[:id])
    end

    def manager_note_params
      params.require(:manager_note).permit(:subject, :note)
    end
end
