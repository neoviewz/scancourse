namespace :products do
  desc "Import OpenFoodFacts CSV into PostgreSQL"
  task import: :environment do
    require "csv"
    require "ruby-progressbar"

    file_path = "/home/cedric/baseopenfoodfact/en.openfoodfacts.org.products.csv"
    batch_size = 1000
    products = []

    # Compter les lignes pour la barre de progression
    total_lines = `wc -l "#{file_path}"`.strip.split(" ")[0].to_i - 1

    puts "📥 Import des produits depuis #{file_path}..."
    progress = ProgressBar.create(title: "Import", total: total_lines, format: "%t: |%B| %p%% %e")

    # Helper pour éviter les overflows
    def safe_float(value, max = 1_000_000)
      v = value.to_f
      (v.nan? || v.abs > max) ? nil : v
    end

    imported = 0
    start_time = Time.now

    CSV.foreach(file_path, col_sep: "\t", headers: true, encoding: "UTF-8", quote_char: "\x00") do |row|
      data = row.to_hash

      products << {
        code: data["code"],
        url: data["url"],
        creator: data["creator"],
        created_t: data["created_t"].to_i,
        created_datetime: data["created_datetime"],
        last_modified_t: data["last_modified_t"].to_i,
        last_modified_datetime: data["last_modified_datetime"],
        product_name: data["product_name"],
        generic_name: data["generic_name"],
        quantity: data["quantity"],
        packaging: data["packaging"],
        packaging_tags: data["packaging_tags"],
        brands: data["brands"],
        brands_tags: data["brands_tags"],
        categories: data["categories"],
        categories_tags: data["categories_tags"],
        categories_fr: data["categories_fr"],
        origins: data["origins"],
        origins_tags: data["origins_tags"],
        manufacturing_places: data["manufacturing_places"],
        manufacturing_places_tags: data["manufacturing_places_tags"],
        labels: data["labels"],
        labels_tags: data["labels_tags"],
        labels_fr: data["labels_fr"],
        emb_codes: data["emb_codes"],
        emb_codes_tags: data["emb_codes_tags"],
        first_packaging_code_geo: data["first_packaging_code_geo"],
        cities: data["cities"],
        cities_tags: data["cities_tags"],
        purchase_places: data["purchase_places"],
        stores: data["stores"],
        countries: data["countries"],
        countries_tags: data["countries_tags"],
        countries_fr: data["countries_fr"],
        ingredients_text: data["ingredients_text"],
        traces: data["traces"],
        traces_tags: data["traces_tags"],
        serving_size: data["serving_size"],
        no_nutriments: data["no_nutriments"] == "1",
        additives_n: data["additives_n"].to_i,
        additives: data["additives"],
        additives_tags: data["additives_tags"],
        ingredients_from_palm_oil_n: data["ingredients_from_palm_oil_n"].to_i,
        ingredients_from_palm_oil: data["ingredients_from_palm_oil"],
        ingredients_from_palm_oil_tags: data["ingredients_from_palm_oil_tags"],
        ingredients_that_may_be_from_palm_oil_n: data["ingredients_that_may_be_from_palm_oil_n"].to_i,
        ingredients_that_may_be_from_palm_oil: data["ingredients_that_may_be_from_palm_oil"],
        ingredients_that_may_be_from_palm_oil_tags: data["ingredients_that_may_be_from_palm_oil_tags"],
        nutrition_grade_fr: data["nutrition_grade_fr"],
        main_category: data["main_category"],
        main_category_fr: data["main_category_fr"],
        image_url: data["image_url"],
        image_small_url: data["image_small_url"],
        energy_100g: safe_float(data["energy_100g"]),
        fat_100g: safe_float(data["fat_100g"]),
        saturated_fat_100g: safe_float(data["saturated-fat_100g"]),
        carbohydrates_100g: safe_float(data["carbohydrates_100g"]),
        sugars_100g: safe_float(data["sugars_100g"]),
        fiber_100g: safe_float(data["fiber_100g"]),
        proteins_100g: safe_float(data["proteins_100g"]),
        sodium_100g: safe_float(data["sodium_100g"]),
        alcohol_100g: safe_float(data["alcohol_100g"]),
        nutrition_score_fr_100g: safe_float(data["nutrition-score-fr_100g"]),
        nutrition_score_uk_100g: safe_float(data["nutrition-score-uk_100g"]),
        created_at: Time.now,
        updated_at: Time.now
      }

      if products.size >= batch_size
        Product.insert_all(products)
        imported += products.size
        products.clear
      end

      progress.increment
    rescue => e
      puts "⚠️ Ligne ignorée : #{e.message}"
      progress.increment
    end

    if products.any?
      Product.insert_all(products)
      imported += products.size
    end

    duration = (Time.now - start_time).round(2)
    puts "\n🎉 Import terminé : #{imported} produits en #{duration}s"
  end
end
