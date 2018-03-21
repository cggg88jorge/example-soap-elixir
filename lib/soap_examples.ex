defmodule SoapExamples do
  
  @wsdl_url "http://www.webservicex.net/globalweather.asmx?WSDL"

  def get_cities_by_country do 
    action = "GetCitiesByCountry"
    parameters = ["mexico"]
    Detergentex.call(@wsdl_url, action, parameters)
    |> case do
         {:ok, _, response} ->
           Enum.each response, fn {_, _, algo} -> 
             import SweetXml
             parse(algo)
             |> xpath(~x"//City/text()"l)
             |> IO.inspect
           end
       end
  end

  def get_weather_by_country do 
    action = "GetCitiesByCountry"
    parameters = ["mexico"]
    Detergentex.call(@wsdl_url, action, parameters)
    |> case do
         {:ok, _, response} ->
           Enum.each response, fn {_, _, algo} -> 
             import SweetXml
             parse(algo)
             |> xpath(~x"//City/text()"l)
             |> IO.inspect
           end
       end
  end

end
