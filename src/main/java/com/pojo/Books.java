package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {

  private int bookId;
  private String bookName;
  private String ISBN;
  private String author;
  private String publisher;


}
