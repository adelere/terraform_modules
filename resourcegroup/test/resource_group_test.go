package test
 
import (
    "testing"
    "os"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)
 
func Test (t *testing.T) {
    t.Parallel()
 
    terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
    // The path to where our Terraform code is located
    TerraformDir: "../",
    })
 
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)
 
    resource_group_Id := terraform.Output(t, terraformOptions, "resource_group_id")
    resource_group_name := terraform.Output(t, terraformOptions, "resource_group_name")
    resource_group_location := terraform.Output(t, terraformOptions, "resource_group_location")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, resource_group_Id, "Resource Group ID is nil")
    assert.NotNil(t, resource_group_name, "Resource Group name is nil")
    assert.NotNil(t, resource_group_location, "Resource Group location is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}