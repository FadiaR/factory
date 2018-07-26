class CreateJoinTableAssemblyPart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts do |t|
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
    end
  end
end
