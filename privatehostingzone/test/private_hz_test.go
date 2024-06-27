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
 
    Private_endpoint_Id := terraform.Output(t, terraformOptions, "private_endpoint_id")
    Private_link_service_Id := terraform.Output(t, terraformOptions, "private_link_service_id")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, Private_endpoint_Id, "Private endpoint ID is nil")
    assert.NotNil(t, Private_link_service_Id, "Private link service Id is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}