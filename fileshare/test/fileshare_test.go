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
 
    storageAccountId := terraform.Output(t, terraformOptions, "storage_account_id")
    storageShareId := terraform.Output(t, terraformOptions, "storage_share_id")
    storageShareUrl := terraform.Output(t, terraformOptions, "storage_share_url")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, storageAccountId, "Storage account ID is nil")
    assert.NotNil(t,storageShareId, "Storage share ID is nil")
    assert.NotNil(t,storageShareUrl, "Storage share URL is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}