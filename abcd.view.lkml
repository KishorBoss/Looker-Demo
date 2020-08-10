# If necessary, uncomment the line below to include explore_source.

# include: "my_firstdemo_k.model.lkml"
explore: abcd {}
view: abcd {
  derived_table: {
    explore_source: order_items {
      column: ADS_MTD_Cy {}
      column: ADS_MTD_Ly {}
      column: sales_ly_Mtd {}
      column: sales_Mtd {}
      column: Sales_YTD {}
      column: Sales_YTD_Ly {}
      column: Percentage_Change_ADS_MTD_vsLy {}
      column: Percentage_Change_MTD_vsLy {}
      column: Percentage_change_YTD_vsLY {}
      column: gender { field: users.gender }
      filters: {
        field: order_items.Date_Filter
        value: "2020/06/29"
      }
    }
  }
  dimension: ADS_MTD_Cy {
    type: number
  }
  dimension: ADS_MTD_Ly {
    type: number
  }
  dimension: sales_ly_Mtd {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: sales_Mtd {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: Sales_YTD {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: Sales_YTD_Ly {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: Percentage_Change_ADS_MTD_vsLy {
    value_format: "#,##0.0%"
    type: number
  }
  dimension: Percentage_Change_MTD_vsLy {
    value_format: "#,##0.0%"
    type: number
  }
  dimension: Percentage_change_YTD_vsLY {
    value_format: "#,##0.0%"
    type: number
  }
  dimension: gender {}
}
