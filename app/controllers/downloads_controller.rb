class DownloadsController < ApplicationController
  # GET /downloads
  # GET /downloads.xml
  def index
    #raise params.inspect

    @downloads = Download.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @downloads }
    end
  end

  # GET /downloads/1
  # GET /downloads/1.xml

  def show
    @download = Download.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @download }
    end
  end

  def golf
   raise params.inspect
  end

  def downloaded
  end


  def download

   @ver = '0.01'
   #layout "do
   #raise params.inspect
 #  debug params
 #  send_file (params)
#  send_file '/files/142.zip', :url_based_filename => true
   #send_file 'public/files/t.mov'
  
  #send_file '/home/mstram/down/secret.txt'
  send_file 'public/files/t1.mov'
#  send_file '/zop/secret.txt'

  #@redir = 'stuff'
  #redirect_to(:action => 'downloaded',:redir =>@redir)

 # respond_to do |format|
 #     format.html # show.html.erb
  #    format.xml  { render :xml => @download }
  # end


#   send_file 'files/secret.txt'
  # headers["Content-Description"] = "Top Secret"
   #headers["Content-Description]
  end


  # GET /downloads/new
  # GET /downloads/new.xml
  def new
    @download = Download.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @download }
    end
  end

  # GET /downloads/1/edit
  def edit
    @download = Download.find(params[:id])
  end

  # POST /downloads
  # POST /downloads.xml
  def create
    @download = Download.new(params[:download])

    respond_to do |format|
      if @Download.save
        flash[:notice] = 'Download was successfully created.'
        format.html { redirect_to(@download) }
        format.xml  { render :xml => @download, :status => :created, :location => @download }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /downloads/1
  # PUT /downloads/1.xml
  def update
    @download = Download.find(params[:id])

    respond_to do |format|
      if @download.update_attributes(params[:Download])
        flash[:notice] = 'Download was successfully updated.'
        format.html { redirect_to(@download) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /downloads/1
  # DELETE /downloads/1.xml
  def destroy
    @download = Download.find(params[:id])
    @download.destroy

    respond_to do |format|
      format.html { redirect_to(downloads_url) }
      format.xml  { head :ok }
    end
  end
end

