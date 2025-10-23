package test

import (
    "testing"
)

func TestASGCreation(t *testing.T) {   

    asg := map[string]interface{}{
        "name": "test-asg",
        "desired_capacity": 1,
        "instances": []string{"i-1234567890abcdef0"},
    }

    if asg["desired_capacity"] != 1 {
        t.Errorf("Expected ASG desired_capacity 1, got %v", asg["desired_capacity"])
    }

    instances := asg["instances"].([]string)
    if len(instances) != 1 {
        t.Errorf("Expected 1 instance in ASG, got %d", len(instances))
    }
}

