package com.opisir.bill.vo;

import lombok.Data;

import javax.persistence.Id;

@Data
public class CategoryVO {

    private Long id;

    private String text;

    private String image;
}
