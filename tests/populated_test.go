package test

import (
	"testing"
)

func TestPopulatedExample(t *testing.T) {
	testCloudFrontCachePolicy(t, "populated")
}
