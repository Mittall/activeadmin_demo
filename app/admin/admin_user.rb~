ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do 
    def create  
      @o_single = AdminUser.new(admin_user_params)
      opts = {
            :email => @o_single.email, 
            :password => params[:admin_user][:password]
          }
      UserMailer.confirmation_instructions(@o_single.email, opts).delivers
      respond_to do |format|
        if @o_single.save
          format.html { redirect_to dashboard_url, notice: notice }
          format.json { render action: 'show', status: :created, location: @o_single }
        else
          format.html { render action: root_url }
          format.json { render json: @o_single.errors, status: :unprocessable_entity }
        end
      end
    end

    private
  
      def admin_user_params
        params.require(:admin_user).permit!
      end
  end
  
end
