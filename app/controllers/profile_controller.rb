class ProfileController < ApplicationController
	before_action :authenticate_user!
	def view
		@outcomes = Outcome.all
	end
	def bet
		@wager = Wager.new(:outcome => Outcome.find(params[:outcome]), :user => current_user )
		if @wager.save
			flash[:notice] = 'Bet was successfully placed!'
			redirect_to @wager.outcome
		else
			format.html { redirect_to @wager.outcome, notice: 'BET FAILED!'}
		end


	end

private	
	# def profile_params
 #      params.require(:profile).permit(:outcome)
 #    end
end
