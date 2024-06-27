package test
 
import (
    "testing"
    "os"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)
 
func TestEC2 (t *testing.T) {
    t.Parallel()
 
    terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
    // The path to where our Terraform code is located
    TerraformDir: "../",
    })
 
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)
 
    Subscription_Id := terraform.Output(t, terraformOptions, "subscription_id")
    Tenant_Id := terraform.Output(t, terraformOptions, "tenant_id")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, Subscription_Id, "Subscription ID is nil")
    assert.NotNil(t, Tenant_Id, "Tenant ID is nil")

}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}