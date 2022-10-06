package org.mini.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationVO {

   private Long reserveno;
   private String reservedate;
   private String classroom;
   private String reservetime;
   private String writer;
   private Date regdate;
   private Date updateDate;
}