package com.javastud.springmvcweb.designpatterns.builder;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

	private String name;
	private int age;
	private String email;

	public static UserBuilder builder() {
		return new UserBuilder();
	}

	public static class UserBuilder {
		private String name;
		private int age;
		private String email;

		public UserBuilder() {
		}

		public UserBuilder name(String name) {
			this.name = name;
			return this;
		}

		public UserBuilder age(int age) {
			this.age = age;
			return this;
		}

		public UserBuilder email(String email) {
			this.email = email;
			return this;
		}

		public User build() {
			return new User(this.name, this.age, this.email);
		}

	}

}
