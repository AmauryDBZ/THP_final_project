module Admin::ExportsHelper
  require 'csv'

  def csv_user(file_name)
    user_table = []
    user_table = User.all
    CSV.open("#{file_name}.csv", "w") do |f|
      f << user_table.first.attributes.map { |a, v| a }
      user_table.each do |user|
        f << user.attributes.map { |a, v| v }
      end
    end
  end

end
