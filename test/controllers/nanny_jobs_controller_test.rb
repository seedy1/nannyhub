require 'test_helper'

class NannyJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nanny_job = nanny_jobs(:one)
  end

  test "should get index" do
    get nanny_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_nanny_job_url
    assert_response :success
  end

  test "should create nanny_job" do
    assert_difference('NannyJob.count') do
      post nanny_jobs_url, params: { nanny_job: { description: @nanny_job.description, duration: @nanny_job.duration, location: @nanny_job.location, needed: @nanny_job.needed, payment: @nanny_job.payment, starting: @nanny_job.starting, user: @nanny_job.user } }
    end

    assert_redirected_to nanny_job_url(NannyJob.last)
  end

  test "should show nanny_job" do
    get nanny_job_url(@nanny_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_nanny_job_url(@nanny_job)
    assert_response :success
  end

  test "should update nanny_job" do
    patch nanny_job_url(@nanny_job), params: { nanny_job: { description: @nanny_job.description, duration: @nanny_job.duration, location: @nanny_job.location, needed: @nanny_job.needed, payment: @nanny_job.payment, starting: @nanny_job.starting, user: @nanny_job.user } }
    assert_redirected_to nanny_job_url(@nanny_job)
  end

  test "should destroy nanny_job" do
    assert_difference('NannyJob.count', -1) do
      delete nanny_job_url(@nanny_job)
    end

    assert_redirected_to nanny_jobs_url
  end
end
