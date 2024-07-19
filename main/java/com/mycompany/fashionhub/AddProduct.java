package com.mycompany.fashionhub;

public class AddProduct {
   private String name;
   private String description;
   private int price;
   private String category;

   public AddProduct() {
   }

   public AddProduct(String name, String description, int price, String category) {
      this.name = name;
      this.description = description;
      this.price = price;
      this.category = category;
   }

   public AddProduct(String name, String description, int price, String category, byte[] image) {
      this.name = name;
      this.description = description;
      this.price = price;
      this.category = category;
   }

   public String getName() {
      return this.name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getDescription() {
      return this.description;
   }

   public void setDescription(String description) {
      this.description = description;
   }

   public int getPrice() {
      return this.price;
   }

   public void setPrice(int price) {
      this.price = price;
   }

   public String getCategory() {
      return this.category;
   }

   public void setCategory(String category) {
      this.category = category;
   }
}
