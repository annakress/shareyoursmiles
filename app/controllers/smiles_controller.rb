class SmilesController < ApplicationController

  http_basic_authenticate_with name: "annakress", password: "secret", except: [:index, :show, :new, :create]
  helper :smiles

  # GET /smiles
  # GET /smiles.json
  def index
    @smiles = Smile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @smiles }
    end
  end

  # GET /smiles/1
  # GET /smiles/1.json
  def show
    @smile = Smile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @smile }
    end
  end

  # GET /smiles/new
  # GET /smiles/new.json
  def new
    @smile = Smile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @smile }
    end
  end

  # # GET /smiles/1/edit
  # def edit
  #   @smile = Smile.find(params[:id])
  # end

  # POST /smiles
  # POST /smiles.json
  def create

    @smile = Smile.new(params[:smile])
    @spamscore = spamScore(params[:smile][:smiletext], params[:smile][:username], params[:email])

    # check if smile is not spam
    if ( @spamscore == 0)
         respond_to do |format|
         if @smile.save
           flash[:notice] = 'Thank you for sharing your beautiful smile!'
           format.html { redirect_to "/" }
         else
           flash[:notice] = 'Sorry, but your smile could not be saved.'
           format.html { redirect_to "/" }
         end
       end
    # spam detected
    else
      flash[:notice] = 'Sorry, but your smile seems to be spam.'
      redirect_to "/"
    end
  end

  # # PUT /smiles/1
  # # PUT /smiles/1.json
  # def update
  #   @smile = Smile.find(params[:id])
  #
  #   respond_to do |format|
  #     if @smile.update_attributes(params[:smile])
  #       format.html { redirect_to @smile, notice: 'Smile was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @smile.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /smiles/1
  # # DELETE /smiles/1.json
  # def destroy
  #   @smile = Smile.find(params[:id])
  #   @smile.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to smiles_url }
  #     format.json { head :no_content }
  #   end
  # end

protected

def spamScore(smiletext, username, email)

spam_words = %w{
      -online 4u 4-u acne adipex advicer baccarrat blackjack bllogspot booker buy byob carisoprodol
      casino chatroom cialis coolhu credit-card-debt cwas cyclen cyclobenzaprine orgy
      day-trading debt-consolidation discreetordering duty-free dutyfree equityloans fioricet
      freenet free\s*shipping gambling- hair-loss homefinance holdem incest jrcreations leethal levitra macinstruct
      mortgagequotes nemogs online-gambling ottawavalleyag ownsthis paxil penis pharmacy phentermine
      poker poze pussy ringtones roulette shemale shoes -site slot-machine thorcarlson
      tramadol trim-spa ultram valeofglamorganconservatives viagra vioxx xanax zolus
      http www https html
      }

spam_score = 0

if email != ""
 spam_score += 1
end

spam_words.each do |word|
 regex = /#{word}/i
 puts regex
 puts word
 if smiletext =~ regex
  spam_score += 1
  puts spam_score
 end
 if username =~ regex
  spam_score += 1
  puts spam_score
 end
 end

 spam_score

end
end
