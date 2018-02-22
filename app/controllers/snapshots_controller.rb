class SnapshotsController < ApplicationController
  def create
    s = Snapshot.create!(snapshot_params)
    render(
      json: {url: s.image.expiring_url},
      status: :created,
    )
  end

  def index
    render(
      json: [],
      status: :ok,
    )
  end

  private

  def snapshot_params
    params.permit(:image)
  end
end
