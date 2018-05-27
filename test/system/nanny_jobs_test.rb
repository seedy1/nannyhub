require "application_system_test_case"

class NannyJobsTest < ApplicationSystemTestCase
  setup do
    @nanny_job = nanny_jobs(:one)
  end

  test "visiting the index" do
    visit nanny_jobs_url
    assert_selector "h1", text: "Nanny Jobs"
  end

  test "creating a Nanny job" do
    visit nanny_jobs_url
    click_on "New Nanny Job"

    fill_in "Description", with: @nanny_job.description
    fill_in "Duration", with: @nanny_job.duration
    fill_in "Location", with: @nanny_job.location
    fill_in "Needed", with: @nanny_job.needed
    fill_in "Payment", with: @nanny_job.payment
    fill_in "Starting", with: @nanny_job.starting
    fill_in "User", with: @nanny_job.user
    click_on "Create Nanny job"

    assert_text "Nanny job was successfully created"
    click_on "Back"
  end

  test "updating a Nanny job" do
    visit nanny_jobs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @nanny_job.description
    fill_in "Duration", with: @nanny_job.duration
    fill_in "Location", with: @nanny_job.location
    fill_in "Needed", with: @nanny_job.needed
    fill_in "Payment", with: @nanny_job.payment
    fill_in "Starting", with: @nanny_job.starting
    fill_in "User", with: @nanny_job.user
    click_on "Update Nanny job"

    assert_text "Nanny job was successfully updated"
    click_on "Back"
  end

  test "destroying a Nanny job" do
    visit nanny_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nanny job was successfully destroyed"
  end
end
