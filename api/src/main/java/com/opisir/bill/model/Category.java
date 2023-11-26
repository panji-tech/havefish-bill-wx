package com.opisir.bill.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @Auther: dingjn
 * @Desc: 流水记录Model
 */
@ToString
@Getter
@Setter
@Entity
public class Category extends BaseEntity {

    @Id
    private Long id;

    /**
     * income:收入
     * consume: 支出
     */
    private String type;

    private String name;

    private String icon;
}
