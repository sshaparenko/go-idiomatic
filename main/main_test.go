package main

import "testing"

func TestAdd_Success(t *testing.T) {
	got := Add(1, 2)
	want := 3

	if got != want {
		t.Errorf("got %q, wanted %q", got, want)
	}
}

func TestAdd_Fail(t *testing.T) {
	got := Add(1, 2)
	want := 4

	if got != want {
		t.Errorf("got %q, wanted %q", got, want)
	}
}
