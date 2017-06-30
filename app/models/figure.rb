class Figure < ActiveRecord::Base
  has_many :figure_titles
  has_many :titles, through: :figure_titles
  has_many :landmarks

  def title=(title_hash)
    title = Title.create(title_hash)
    self.titles << title
  end

  def title_ids=(raw_params_data)
    id_hash = raw_params_data[0]
    titles = id_hash.keys.map do |key|
      Title.find(key.to_i)
    end

    titles.each do |title|
      self.titles << title
    end
  end

  def landmark=(landmark_hash)
    landmark = Landmark.create(landmark_hash)
    self.landmarks << landmark
  end

  def landmark_ids=(raw_params_data)
    id_hash = raw_params_data[0]
    landmarks = id_hash.keys.map do |key|
      Landmark.find(key.to_i)
    end

    landmarks.each do |landmark|
      self.landmarks << landmark
    end
  end
end
