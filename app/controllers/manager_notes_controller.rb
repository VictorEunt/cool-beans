class ManagerNotesController < ApplicationController
  before_action :set_manager_note, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @manager_notes = ManagerNote.all
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
    @members = Member.all
    @manager_note = ManagerNote.new(manager_note_params)
    respond_to do |format|
      if @manager_note.save
        # Tell the UserMailer to send a welcome email after save
        MemberMailer.sample_email(Member.all).deliver
 
        format.html { redirect_to(@manager_note, notice: 'Email was successfully created.') }
        format.json { render json: @manager_note, status: :created, location: @manager_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @manager_note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @members = Member.all
    @manager_note.update(manager_note_params)
    respond_to do |format|
      if @manager_note.save
        # Tell the UserMailer to send a welcome email after save
        MemberMailer.sample_email(Member.first).deliver
 
        format.html { redirect_to(@manager_note, notice: 'Email was successfully created.') }
        format.json { render json: @manager_note, status: :created, location: @manager_note }
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
