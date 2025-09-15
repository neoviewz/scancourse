# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_15_121453) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "url"
    t.string "creator"
    t.integer "created_t"
    t.datetime "created_datetime"
    t.integer "last_modified_t"
    t.datetime "last_modified_datetime"
    t.string "product_name"
    t.string "generic_name"
    t.string "quantity"
    t.text "packaging"
    t.text "packaging_tags"
    t.string "brands"
    t.text "brands_tags"
    t.text "categories"
    t.text "categories_tags"
    t.text "categories_fr"
    t.text "origins"
    t.text "origins_tags"
    t.text "manufacturing_places"
    t.text "manufacturing_places_tags"
    t.text "labels"
    t.text "labels_tags"
    t.text "labels_fr"
    t.text "emb_codes"
    t.text "emb_codes_tags"
    t.string "first_packaging_code_geo"
    t.text "cities"
    t.text "cities_tags"
    t.text "purchase_places"
    t.text "stores"
    t.text "countries"
    t.text "countries_tags"
    t.text "countries_fr"
    t.text "ingredients_text"
    t.text "traces"
    t.text "traces_tags"
    t.string "serving_size"
    t.boolean "no_nutriments"
    t.integer "additives_n"
    t.text "additives"
    t.text "additives_tags"
    t.integer "ingredients_from_palm_oil_n"
    t.text "ingredients_from_palm_oil"
    t.text "ingredients_from_palm_oil_tags"
    t.integer "ingredients_that_may_be_from_palm_oil_n"
    t.text "ingredients_that_may_be_from_palm_oil"
    t.text "ingredients_that_may_be_from_palm_oil_tags"
    t.string "nutrition_grade_fr"
    t.string "main_category"
    t.string "main_category_fr"
    t.string "image_url"
    t.string "image_small_url"
    t.decimal "energy_100g", precision: 20, scale: 6
    t.decimal "energy_kj_100g", precision: 20, scale: 6
    t.decimal "energy_kcal_100g", precision: 20, scale: 6
    t.decimal "proteins_100g", precision: 20, scale: 6
    t.decimal "casein_100g", precision: 20, scale: 6
    t.decimal "serum_proteins_100g", precision: 20, scale: 6
    t.decimal "nucleotides_100g", precision: 20, scale: 6
    t.decimal "carbohydrates_100g", precision: 20, scale: 6
    t.decimal "sugars_100g", precision: 20, scale: 6
    t.decimal "sucrose_100g", precision: 20, scale: 6
    t.decimal "glucose_100g", precision: 20, scale: 6
    t.decimal "fructose_100g", precision: 20, scale: 6
    t.decimal "lactose_100g", precision: 20, scale: 6
    t.decimal "maltose_100g", precision: 20, scale: 6
    t.decimal "maltodextrins_100g", precision: 20, scale: 6
    t.decimal "starch_100g", precision: 20, scale: 6
    t.decimal "polyols_100g", precision: 20, scale: 6
    t.decimal "fat_100g", precision: 20, scale: 6
    t.decimal "saturated_fat_100g", precision: 20, scale: 6
    t.decimal "butyric_acid_100g", precision: 20, scale: 6
    t.decimal "caproic_acid_100g", precision: 20, scale: 6
    t.decimal "caprylic_acid_100g", precision: 20, scale: 6
    t.decimal "capric_acid_100g", precision: 20, scale: 6
    t.decimal "lauric_acid_100g", precision: 20, scale: 6
    t.decimal "myristic_acid_100g", precision: 20, scale: 6
    t.decimal "palmitic_acid_100g", precision: 20, scale: 6
    t.decimal "stearic_acid_100g", precision: 20, scale: 6
    t.decimal "arachidic_acid_100g", precision: 20, scale: 6
    t.decimal "behenic_acid_100g", precision: 20, scale: 6
    t.decimal "lignoceric_acid_100g", precision: 20, scale: 6
    t.decimal "cerotic_acid_100g", precision: 20, scale: 6
    t.decimal "montanic_acid_100g", precision: 20, scale: 6
    t.decimal "melissic_acid_100g", precision: 20, scale: 6
    t.decimal "monounsaturated_fat_100g", precision: 20, scale: 6
    t.decimal "polyunsaturated_fat_100g", precision: 20, scale: 6
    t.decimal "omega_3_fat_100g", precision: 20, scale: 6
    t.decimal "alpha_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "eicosapentaenoic_acid_100g", precision: 20, scale: 6
    t.decimal "docosahexaenoic_acid_100g", precision: 20, scale: 6
    t.decimal "omega_6_fat_100g", precision: 20, scale: 6
    t.decimal "linoleic_acid_100g", precision: 20, scale: 6
    t.decimal "arachidonic_acid_100g", precision: 20, scale: 6
    t.decimal "gamma_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "dihomo_gamma_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "omega_9_fat_100g", precision: 20, scale: 6
    t.decimal "oleic_acid_100g", precision: 20, scale: 6
    t.decimal "elaidic_acid_100g", precision: 20, scale: 6
    t.decimal "gondoic_acid_100g", precision: 20, scale: 6
    t.decimal "mead_acid_100g", precision: 20, scale: 6
    t.decimal "erucic_acid_100g", precision: 20, scale: 6
    t.decimal "nervonic_acid_100g", precision: 20, scale: 6
    t.decimal "trans_fat_100g", precision: 20, scale: 6
    t.decimal "cholesterol_100g", precision: 20, scale: 6
    t.decimal "fiber_100g", precision: 20, scale: 6
    t.decimal "sodium_100g", precision: 20, scale: 6
    t.decimal "alcohol_100g", precision: 20, scale: 6
    t.decimal "vitamin_a_100g", precision: 20, scale: 6
    t.decimal "vitamin_d_100g", precision: 20, scale: 6
    t.decimal "vitamin_e_100g", precision: 20, scale: 6
    t.decimal "vitamin_k_100g", precision: 20, scale: 6
    t.decimal "vitamin_c_100g", precision: 20, scale: 6
    t.decimal "vitamin_b1_100g", precision: 20, scale: 6
    t.decimal "vitamin_b2_100g", precision: 20, scale: 6
    t.decimal "vitamin_pp_100g", precision: 20, scale: 6
    t.decimal "vitamin_b6_100g", precision: 20, scale: 6
    t.decimal "vitamin_b9_100g", precision: 20, scale: 6
    t.decimal "vitamin_b12_100g", precision: 20, scale: 6
    t.decimal "biotin_100g", precision: 20, scale: 6
    t.decimal "pantothenic_acid_100g", precision: 20, scale: 6
    t.decimal "silica_100g", precision: 20, scale: 6
    t.decimal "bicarbonate_100g", precision: 20, scale: 6
    t.decimal "potassium_100g", precision: 20, scale: 6
    t.decimal "chloride_100g", precision: 20, scale: 6
    t.decimal "calcium_100g", precision: 20, scale: 6
    t.decimal "phosphorus_100g", precision: 20, scale: 6
    t.decimal "iron_100g", precision: 20, scale: 6
    t.decimal "magnesium_100g", precision: 20, scale: 6
    t.decimal "zinc_100g", precision: 20, scale: 6
    t.decimal "copper_100g", precision: 20, scale: 6
    t.decimal "manganese_100g", precision: 20, scale: 6
    t.decimal "fluoride_100g", precision: 20, scale: 6
    t.decimal "selenium_100g", precision: 20, scale: 6
    t.decimal "chromium_100g", precision: 20, scale: 6
    t.decimal "molybdenum_100g", precision: 20, scale: 6
    t.decimal "iodine_100g", precision: 20, scale: 6
    t.decimal "caffeine_100g", precision: 20, scale: 6
    t.decimal "taurine_100g", precision: 20, scale: 6
    t.decimal "ph_100g", precision: 20, scale: 6
    t.decimal "fruits_vegetables_nuts_100g", precision: 20, scale: 6
    t.decimal "carbon_footprint_100g", precision: 20, scale: 6
    t.integer "nutrition_score_fr_100g"
    t.integer "nutrition_score_uk_100g"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_products_on_code", unique: true
  end

  create_table "produits", force: :cascade do |t|
    t.string "code"
    t.string "url"
    t.string "creator"
    t.integer "created_t"
    t.datetime "created_datetime"
    t.integer "last_modified_t"
    t.datetime "last_modified_datetime"
    t.string "product_name"
    t.string "generic_name"
    t.string "quantity"
    t.text "packaging"
    t.text "packaging_tags"
    t.string "brands"
    t.text "brands_tags"
    t.text "categories"
    t.text "categories_tags"
    t.text "categories_fr"
    t.text "origins"
    t.text "origins_tags"
    t.text "manufacturing_places"
    t.text "manufacturing_places_tags"
    t.text "labels"
    t.text "labels_tags"
    t.text "labels_fr"
    t.text "emb_codes"
    t.text "emb_codes_tags"
    t.string "first_packaging_code_geo"
    t.text "cities"
    t.text "cities_tags"
    t.text "purchase_places"
    t.text "stores"
    t.text "countries"
    t.text "countries_tags"
    t.text "countries_fr"
    t.text "ingredients_text"
    t.text "traces"
    t.text "traces_tags"
    t.string "serving_size"
    t.boolean "no_nutriments"
    t.integer "additives_n"
    t.text "additives"
    t.text "additives_tags"
    t.integer "ingredients_from_palm_oil_n"
    t.text "ingredients_from_palm_oil"
    t.text "ingredients_from_palm_oil_tags"
    t.integer "ingredients_that_may_be_from_palm_oil_n"
    t.text "ingredients_that_may_be_from_palm_oil"
    t.text "ingredients_that_may_be_from_palm_oil_tags"
    t.string "nutrition_grade_fr"
    t.string "main_category"
    t.string "main_category_fr"
    t.string "image_url"
    t.string "image_small_url"
    t.decimal "energy_100g", precision: 20, scale: 6
    t.decimal "energy_kj_100g", precision: 20, scale: 6
    t.decimal "energy_kcal_100g", precision: 20, scale: 6
    t.decimal "proteins_100g", precision: 20, scale: 6
    t.decimal "casein_100g", precision: 20, scale: 6
    t.decimal "serum_proteins_100g", precision: 20, scale: 6
    t.decimal "nucleotides_100g", precision: 20, scale: 6
    t.decimal "carbohydrates_100g", precision: 20, scale: 6
    t.decimal "sugars_100g", precision: 20, scale: 6
    t.decimal "sucrose_100g", precision: 20, scale: 6
    t.decimal "glucose_100g", precision: 20, scale: 6
    t.decimal "fructose_100g", precision: 20, scale: 6
    t.decimal "lactose_100g", precision: 20, scale: 6
    t.decimal "maltose_100g", precision: 20, scale: 6
    t.decimal "maltodextrins_100g", precision: 20, scale: 6
    t.decimal "starch_100g", precision: 20, scale: 6
    t.decimal "polyols_100g", precision: 20, scale: 6
    t.decimal "fat_100g", precision: 20, scale: 6
    t.decimal "saturated_fat_100g", precision: 20, scale: 6
    t.decimal "butyric_acid_100g", precision: 20, scale: 6
    t.decimal "caproic_acid_100g", precision: 20, scale: 6
    t.decimal "caprylic_acid_100g", precision: 20, scale: 6
    t.decimal "capric_acid_100g", precision: 20, scale: 6
    t.decimal "lauric_acid_100g", precision: 20, scale: 6
    t.decimal "myristic_acid_100g", precision: 20, scale: 6
    t.decimal "palmitic_acid_100g", precision: 20, scale: 6
    t.decimal "stearic_acid_100g", precision: 20, scale: 6
    t.decimal "arachidic_acid_100g", precision: 20, scale: 6
    t.decimal "behenic_acid_100g", precision: 20, scale: 6
    t.decimal "lignoceric_acid_100g", precision: 20, scale: 6
    t.decimal "cerotic_acid_100g", precision: 20, scale: 6
    t.decimal "montanic_acid_100g", precision: 20, scale: 6
    t.decimal "melissic_acid_100g", precision: 20, scale: 6
    t.decimal "monounsaturated_fat_100g", precision: 20, scale: 6
    t.decimal "polyunsaturated_fat_100g", precision: 20, scale: 6
    t.decimal "omega_3_fat_100g", precision: 20, scale: 6
    t.decimal "alpha_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "eicosapentaenoic_acid_100g", precision: 20, scale: 6
    t.decimal "docosahexaenoic_acid_100g", precision: 20, scale: 6
    t.decimal "omega_6_fat_100g", precision: 20, scale: 6
    t.decimal "linoleic_acid_100g", precision: 20, scale: 6
    t.decimal "arachidonic_acid_100g", precision: 20, scale: 6
    t.decimal "gamma_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "dihomo_gamma_linolenic_acid_100g", precision: 20, scale: 6
    t.decimal "omega_9_fat_100g", precision: 20, scale: 6
    t.decimal "oleic_acid_100g", precision: 20, scale: 6
    t.decimal "elaidic_acid_100g", precision: 20, scale: 6
    t.decimal "gondoic_acid_100g", precision: 20, scale: 6
    t.decimal "mead_acid_100g", precision: 20, scale: 6
    t.decimal "erucic_acid_100g", precision: 20, scale: 6
    t.decimal "nervonic_acid_100g", precision: 20, scale: 6
    t.decimal "trans_fat_100g", precision: 20, scale: 6
    t.decimal "cholesterol_100g", precision: 20, scale: 6
    t.decimal "fiber_100g", precision: 20, scale: 6
    t.decimal "sodium_100g", precision: 20, scale: 6
    t.decimal "alcohol_100g", precision: 20, scale: 6
    t.decimal "vitamin_a_100g", precision: 20, scale: 6
    t.decimal "vitamin_d_100g", precision: 20, scale: 6
    t.decimal "vitamin_e_100g", precision: 20, scale: 6
    t.decimal "vitamin_k_100g", precision: 20, scale: 6
    t.decimal "vitamin_c_100g", precision: 20, scale: 6
    t.decimal "vitamin_b1_100g", precision: 20, scale: 6
    t.decimal "vitamin_b2_100g", precision: 20, scale: 6
    t.decimal "vitamin_pp_100g", precision: 20, scale: 6
    t.decimal "vitamin_b6_100g", precision: 20, scale: 6
    t.decimal "vitamin_b9_100g", precision: 20, scale: 6
    t.decimal "vitamin_b12_100g", precision: 20, scale: 6
    t.decimal "biotin_100g", precision: 20, scale: 6
    t.decimal "pantothenic_acid_100g", precision: 20, scale: 6
    t.decimal "silica_100g", precision: 20, scale: 6
    t.decimal "bicarbonate_100g", precision: 20, scale: 6
    t.decimal "potassium_100g", precision: 20, scale: 6
    t.decimal "chloride_100g", precision: 20, scale: 6
    t.decimal "calcium_100g", precision: 20, scale: 6
    t.decimal "phosphorus_100g", precision: 20, scale: 6
    t.decimal "iron_100g", precision: 20, scale: 6
    t.decimal "magnesium_100g", precision: 20, scale: 6
    t.decimal "zinc_100g", precision: 20, scale: 6
    t.decimal "copper_100g", precision: 20, scale: 6
    t.decimal "manganese_100g", precision: 20, scale: 6
    t.decimal "fluoride_100g", precision: 20, scale: 6
    t.decimal "selenium_100g", precision: 20, scale: 6
    t.decimal "chromium_100g", precision: 20, scale: 6
    t.decimal "molybdenum_100g", precision: 20, scale: 6
    t.decimal "iodine_100g", precision: 20, scale: 6
    t.decimal "caffeine_100g", precision: 20, scale: 6
    t.decimal "taurine_100g", precision: 20, scale: 6
    t.decimal "ph_100g", precision: 20, scale: 6
    t.decimal "fruits_vegetables_nuts_100g", precision: 20, scale: 6
    t.decimal "carbon_footprint_100g", precision: 20, scale: 6
    t.integer "nutrition_score_fr_100g"
    t.integer "nutrition_score_uk_100g"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_produits_on_code", unique: true
  end
end
