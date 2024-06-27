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
 
    virtualNetworkId := terraform.Output(t, terraformOptions, "virtual_network_id")
    virtualNetworkName := terraform.Output(t, terraformOptions, "virtual_network_name")
    virtualNetworkLocation := terraform.Output(t, terraformOptions, "virtual_network_location")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t,  virtualNetworkId, "vnet ID is nil")
    assert.NotNil(t,  virtualNetworkName, "vnet Name is nil")
    assert.NotNil(t,  virtualNetworkName, "vnet Location is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}