class RenameFigureTitles < ActiveRecord::Migration
  def change
    rename_table :figure_titles, :roles
  end
end

