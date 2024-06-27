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
 
    LAWId := terraform.Output(t, terraformOptions, "log_analytics_id")
    LAW_workspace_Id := terraform.Output(t, terraformOptions, "log_analytics_workspace_id")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, LAWId, "log analytics ID is nil")
    assert.NotNil(t, LAW_workspace_Id, "log analytics workspace ID is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}