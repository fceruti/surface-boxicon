defmodule Boxicon.Logos.Less do
  @moduledoc "logos/less"
  use Surface.Component
  import Boxicon

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill (default: currentColor)"
  prop fill, :string, default: "currentColor"

  @doc "svg stroke (default: )"
  prop stroke, :string, default: ""

  @doc "Width & height of the icon (default: 100%)"
  prop size, :string, default: "100%"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M21.142 10.843c0-.64.098-1.018.098-1.707 0-1.067-.393-1.411-1.263-1.411h-.641v.755h.196c.444 0 .542.147.542.689 0 .509-.049 1.018-.049 1.608 0 .755.246 1.05.739 1.165v.049c-.493.116-.739.411-.739 1.166 0 .591.049 1.067.049 1.608 0 .558-.114.705-.542.705v.017h-.196v.788h.641c.87 0 1.263-.344 1.263-1.411 0-.706-.098-1.067-.098-1.707 0-.345.213-.706.854-.739v-.853c-.642-.016-.854-.377-.854-.722zm-3.299 1.001c-.493-.196-.952-.312-.952-.64 0-.246.197-.395.558-.395.361 0 .689.148 1.05.411l.657-.87c-.409-.313-.968-.641-1.724-.641-1.115 0-1.871.641-1.871 1.544 0 .804.706 1.214 1.298 1.443.508.196 1.001.361 1.001.689 0 .246-.197.41-.641.41-.41 0-.821-.164-1.263-.509l-.657.952c.492.41 1.247.689 1.871.689 1.313 0 2.019-.689 2.019-1.592-.001-.9-.707-1.277-1.346-1.491zm-11.21 1.854c-.114 0-.262-.098-.262-.41V7.725H4.039c-.886 0-1.279.344-1.279 1.411 0 .706.099 1.101.099 1.707 0 .345-.213.706-.854.739v.853c.641.017.854.378.854.723 0 .606-.099.968-.099 1.674 0 1.067.394 1.411 1.264 1.411h.64v-.755h-.197c-.411 0-.542-.164-.542-.706 0-.541.049-1.001.049-1.607 0-.756-.245-1.05-.738-1.165v-.051c.493-.114.738-.409.738-1.165 0-.59-.049-1.066-.049-1.607 0-.542.114-.689.542-.689h.442v4.711c0 1.001.345 1.657 1.346 1.657.313 0 .559-.05.739-.115l-.165-1.066c-.098.013-.146.013-.196.013zm7.238-1.854c-.509-.196-.969-.312-.969-.64 0-.246.197-.395.558-.395.361 0 .689.148 1.051.411l.656-.87c-.41-.313-.968-.641-1.723-.641-1.116 0-1.872.641-1.872 1.544 0 .804.707 1.214 1.297 1.443.51.196 1.002.361 1.002.689 0 .246-.197.41-.641.41-.41 0-.82-.164-1.264-.509l-.64.952c.492.41 1.247.689 1.871.689 1.313 0 2.019-.689 2.019-1.592.001-.9-.705-1.277-1.345-1.491zm-4.842-2.15c-1.198 0-2.347 1.001-2.314 2.577 0 1.624 1.066 2.576 2.479 2.576.591 0 1.247-.214 1.756-.558l-.492-.87c-.36.213-.706.312-1.066.312-.657 0-1.165-.312-1.297-1.066h2.971c.017-.115.049-.345.049-.607.016-1.33-.707-2.364-2.086-2.364zm-.935 2.068c.099-.655.492-.969.951-.969.592 0 .821.411.821.969H8.094z"/></svg>
    """
  end
end
