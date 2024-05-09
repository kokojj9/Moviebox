package com.kh.moviebox.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class Price {
	
	private int studentCount;
	private int commonCount;
	private int studentPrice;
	private int commonPrice;
	private int totalPrice;
	
}
