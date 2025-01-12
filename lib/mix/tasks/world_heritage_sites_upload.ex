alias EsteeLauderSites.Sites.WorldHeritageSite
alias EsteeLauderSites.Repo

defmodule Mix.Tasks.WorldHeritageSitesUpload do
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    Mix.Task.run("app.start")

    Repo.transaction(fn ->
      File.stream!("priv/whc-sites.csv")
      |> Stream.drop(1)
      |> CSV.decode(
        escape_max_lines: 1000,
        headers: [
          :unique_number,
          :id_no,
          :rev_bis,
          :name_en,
          :name_fr,
          :name_es,
          :name_ru,
          :name_ar,
          :name_zh,
          :short_description_en,
          :short_description_fr,
          :short_description_es,
          :short_description_ru,
          :short_description_ar,
          :short_description_zh,
          :justification_en,
          :justification_fr,
          :date_inscribed,
          :secondary_dates,
          :danger,
          :date_end,
          :danger_list,
          :longitude,
          :latitude,
          :area_hectares,
          :C1,
          :C2,
          :C3,
          :C4,
          :C5,
          :C6,
          :N7,
          :N8,
          :N9,
          :N10,
          :criteria_txt,
          :category,
          :category_short,
          :states_name_en,
          :states_name_fr,
          :states_name_es,
          :states_name_ru,
          :states_name_ar,
          :states_name_zh,
          :region_en,
          :region_fr,
          :iso_code,
          :udnp_code,
          :transboundary
        ]
      )
      |> Enum.each(fn {:ok, map} ->
        WorldHeritageSite.changeset(
          %WorldHeritageSite{},
          %{
            unique_number: String.to_integer(map[:unique_number]),
            id_no: String.to_integer(map[:id_no]),
            rev_bis: map[:rev_bis],
            name_en: map[:name_en],
            name_fr: map[:name_fr],
            name_es: map[:name_es],
            name_ru: map[:name_ru],
            name_ar: map[:name_ar],
            name_zh: map[:name_zh],
            short_description_en: map[:short_description_en],
            short_description_fr: map[:short_description_fr],
            short_description_es: map[:short_description_es],
            short_description_ru: map[:short_description_ru],
            short_description_ar: map[:short_description_ar],
            short_description_zh: map[:short_description_zh],
            justification_en: map[:justification_en],
            justification_fr: map[:justification_fr],
            date_inscribed: String.to_integer(map[:date_inscribed]),
            secondary_dates: map[:secondary_dates],
            danger: String.to_integer(map[:danger]),
            date_end: map[:date_end],
            danger_list: map[:danger_list],
            longitude: value_to_float(map[:longitude]),
            latitude: value_to_float(map[:latitude]),
            area_hectares: value_to_float(map[:area_hectares]),
            c1: String.to_integer(map[:C1]),
            c2: String.to_integer(map[:C2]),
            c3: String.to_integer(map[:C3]),
            c4: String.to_integer(map[:C4]),
            c5: String.to_integer(map[:C5]),
            c6: String.to_integer(map[:C6]),
            n7: String.to_integer(map[:N7]),
            n8: String.to_integer(map[:N8]),
            n9: String.to_integer(map[:N9]),
            n10: String.to_integer(map[:N10]),
            criteria_txt: map[:criteria_txt],
            category: map[:category],
            category_short: map[:category_short],
            states_name_en: map[:states_name_en],
            states_name_fr: map[:states_name_fr],
            states_name_es: map[:states_name_es],
            states_name_ru: map[:states_name_ru],
            states_name_ar: map[:states_name_ar],
            states_name_zh: map[:states_name_zh],
            region_en: map[:region_en],
            region_fr: map[:region_fr],
            iso_code: map[:iso_code],
            udnp_code: map[:udnp_code],
            transboundary: String.to_integer(map[:transboundary])
          }
        )
        |> Repo.insert!()
      end)
    end)
  end

  defp value_to_float(""), do: nil

  defp value_to_float(value) when is_binary(value) do
    case Float.parse(value) do
      {float, ""} ->
        float

      _ ->
        value
        |> String.to_integer()
        |> Kernel./(1)
    end
  end
end
