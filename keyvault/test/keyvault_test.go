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
 
    KeyVault_ID := terraform.Output(t, terraformOptions, "keyvault_id")
    KeyVault_Name := terraform.Output(t, terraformOptions, "keyvault_name")
    KeyVault_Url := terraform.Output(t, terraformOptions, "keyvault_url")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, KeyVault_ID, "Key Vault ID is nil")
    assert.NotNil(t, KeyVault_Name, "Key Vault Name is nil")
    assert.NotNil(t, KeyVault_Url, "Key Vault Name is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}