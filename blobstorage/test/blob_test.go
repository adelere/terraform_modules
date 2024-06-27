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
 
    blobname := terraform.Output(t, terraformOptions, "blob_name")
    blobId := terraform.Output(t, terraformOptions, "blob_id")
    bloburl := terraform.Output(t, terraformOptions, "blob_url")
    storageAccountId := terraform.Output(t, terraformOptions, "storage_account_id")
    storageContainerId := terraform.Output(t, terraformOptions, "storage_container_id")

    // Add your assertions here to test the deployed resources
    assert.NotNil(t, storageAccountId, "Storage account ID is nil")
    assert.NotNil(t, storageContainerId, "Storage container ID is nil")
    assert.NotNil(t, blobname, "Blob name is nil")
    assert.NotNil(t, blobId, "Blob Id is nil")
    assert.NotNil(t, bloburl, "Blob url is nil")
}

func TestMain(m *testing.M) {
    // Call the tests
    code := m.Run()

    // Exit with status code
    os.Exit(code)
}