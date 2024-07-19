package com.mycompany.fashionhub;

import java.awt.Color;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public class Utility {
   public static String createJavaScriptFromObject(Object o) {
      String js = "";
      js = js + "<script>";
      js = js + "function fillFormFromJS() {";
      js = js + "var map = {";

      try {
         Field[] flds = o.getClass().getDeclaredFields();
         Field[] var3 = flds;
         int var4 = flds.length;

         for(int var5 = 0; var5 < var4; ++var5) {
            Field f = var3[var5];
            f.setAccessible(true);
            String key = f.getName();
            Object value = f.get(o);
            if (value instanceof String) {
               js = js + "'" + key + "': '" + (String)value + "',";
            } else if (value instanceof Integer) {
               js = js + "'" + key + "': '" + (Integer)value + "',";
            } else if (value instanceof Double) {
               js = js + "'" + key + "': '" + (Double)value + "',";
            } else if (value instanceof Boolean) {
               js = js + "'" + key + "': '" + (Boolean)value + "',";
            } else if (value instanceof Color) {
               js = js + "'" + key + "': '" + convertColorToName((Color)value) + "',";
            } else if (value instanceof Date) {
               DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
               js = js + "'" + key + "': '" + format.format((Date)value) + "',";
            }
         }
      } catch (Exception var10) {
         System.err.println(var10);
      }

      js = js + "};";
      js = js + "for(var key in map) {";
      js = js + "    document.getElementsByName(key)[0].value = map[key];";
      js = js + "}";
      js = js + "}";
      js = js + "</script>";
      return js;
   }

   private static String convertColorToName(Color col) {
      String colorName = "";

      try {
         Map<Integer, String> map = new HashMap();
         Field[] var3 = Color.class.getFields();
         int var4 = var3.length;

         for(int var5 = 0; var5 < var4; ++var5) {
            Field f = var3[var5];
            if (f.getType() == Color.class) {
               Color c = (Color)f.get((Object)null);
               map.put(c.getRGB(), f.getName());
            }
         }

         if (map.containsKey(col.getRGB())) {
            colorName = (String)map.get(col.getRGB());
         }
      } catch (Exception var8) {
      }

      return colorName;
   }

   public static Object extractObjectFromRequest(Class<?> c, HttpServletRequest request) {
      Object o = null;

      try {
         o = c.getDeclaredConstructor().newInstance();
         Field[] flds = c.getDeclaredFields();
         Field[] var4 = flds;
         int var5 = flds.length;

         for(int var6 = 0; var6 < var5; ++var6) {
            Field f = var4[var6];
            String param = request.getParameter(f.getName());
            if (param != null && !param.isEmpty()) {
               f.setAccessible(true);
               Object par = null;
               if (f.getType().equals(String.class)) {
                  par = param;
               } else if (f.getType().getName().equals("int")) {
                  par = Integer.parseInt(param);
               } else if (f.getType().getName().equals(Long.class)) {
                  par = Long.parseLong(param);
               } else if (f.getType().getName().equals("double")) {
                  par = Double.parseDouble(param);
               } else if (f.getType().getName().equals(Boolean.class)) {
                  par = Boolean.parseBoolean(param);
               } else if (!f.getType().getName().equals(Color.class) && f.getType().getName().equals(Date.class)) {
                  DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                  par = format.parse(param);
               }

               if (par != null) {
                  f.set(o, par);
               }
            }
         }
      } catch (Exception var11) {
         System.err.println(var11);
      }

      return o;
   }

   public static String escapeXml(String in) {
      in = in.replace("&", "&amp;");
      in = in.replace("\"", "&#034");
      in = in.replace("'", "&#039");
      in = in.replace("<", "&lt;");
      in = in.replace(">", "&gt;");
      return in;
   }

   public static String escapeSql(String in) {
      in = in.replace("%", "&#037");
      in = in.replace("'", "&#039");
      in = in.replace("_", "&#095");
      return in;
   }

   public static void main(String[] args) throws ParseException {
      String t1 = "hi ' there _+_ __ % like %%";
      System.out.println(escapeSql(t1));
      String t2 = "\"\" let's use <some> funny & not && so funny tag's";
      System.out.println(escapeXml(t2));
   }
}
