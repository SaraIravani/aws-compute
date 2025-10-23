package test

import (
    "testing"
)

func TestEC2InstanceCreation(t *testing.T)  {

    ec2 := map[string]interface{}{
        "id": "i-1234567890abcdef0",
        "state": "running",
        "type": "t3.micro",
    }

    if ec2["state"] != "running" {
        t.Errorf("Expected EC2 instance to be running, got %s", ec2["state"])
    }

    if ec2["type"] != "t3.micro" {
        t.Errorf("Expected EC2 instance type t3.micro, got %s", ec2["type"])
    }
}

