package com.tsc.booking.exception;

import java.lang.reflect.InvocationTargetException;

public class PrivilegeException extends InvocationTargetException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public PrivilegeException() {
		super();
	}

	public PrivilegeException(Throwable target, String s) {
		super(target, s);
	}

	public PrivilegeException(Throwable target) {
		super(target);
	}

}
