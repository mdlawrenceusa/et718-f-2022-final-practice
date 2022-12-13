require 'test_helper'

class CountryStatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_statistic = country_statistics(:one)
  end

  test "should get index" do
    get country_statistics_url
    assert_response :success
  end

  test "should get new" do
    get new_country_statistic_url
    assert_response :success
  end

  test "should create country_statistic" do
    assert_difference('CountryStatistic.count') do
      post country_statistics_url, params: { country_statistic: { GDP: @country_statistic.GDP, birthrate: @country_statistic.birthrate, healthexpenditurepercapita: @country_statistic.healthexpenditurepercapita, healthexpenditureppercentGDP: @country_statistic.healthexpenditureppercentGDP, lifeexpectancy: @country_statistic.lifeexpectancy, mobilephones: @country_statistic.mobilephones, mortalityunder5: @country_statistic.mortalityunder5, name: @country_statistic.name, population: @country_statistic.population, populationurban: @country_statistic.populationurban } }
    end

    assert_redirected_to country_statistic_url(CountryStatistic.last)
  end

  test "should show country_statistic" do
    get country_statistic_url(@country_statistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_statistic_url(@country_statistic)
    assert_response :success
  end

  test "should update country_statistic" do
    patch country_statistic_url(@country_statistic), params: { country_statistic: { GDP: @country_statistic.GDP, birthrate: @country_statistic.birthrate, healthexpenditurepercapita: @country_statistic.healthexpenditurepercapita, healthexpenditureppercentGDP: @country_statistic.healthexpenditureppercentGDP, lifeexpectancy: @country_statistic.lifeexpectancy, mobilephones: @country_statistic.mobilephones, mortalityunder5: @country_statistic.mortalityunder5, name: @country_statistic.name, population: @country_statistic.population, populationurban: @country_statistic.populationurban } }
    assert_redirected_to country_statistic_url(@country_statistic)
  end

  test "should destroy country_statistic" do
    assert_difference('CountryStatistic.count', -1) do
      delete country_statistic_url(@country_statistic)
    end

    assert_redirected_to country_statistics_url
  end
end
