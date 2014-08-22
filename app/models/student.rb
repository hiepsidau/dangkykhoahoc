class Student < ActiveRecord::Base
	attr_accessor :password
	has_many :course_students
	has_many :courses,:through => :course_students
	validates :email, presence: true,
			  format: {with: /[^\w.]+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$]/,on: :create },
			  #regexlib.com
			  uniqueness: true 
			  #:on => :update

	validates :password,:presence => {:message => 'khong the bo trong'},
						confirmation: true
	validates :enscripted_password, :presence => true, :on => :create
	before_validation :enscripted_password, :if => "password.present?" # lambda
	def enscript_password
		@enscripted_password = Digest::MD5.base64digest(self.password) #@password co the thay cho self.password--nhung @password qua them ham xu ly
																	 # def password 
																	 # 	@password + '..'
																	 # end
	end
	def enscript_password
      self.enscript_password = self.class.encode(password)
    end
  	def self.login_by_email_and_password(email, password) #class method,kiem tra ban than co login dc hay ko

      student = where(:email => email.first)
      password.present? && student.password == encode(password)# credential_params
  	end
  	def self.encode(text)
    	Digest::MD5.base64digest(text)
  	end
end
