module ActiveAdmin
  module Views
    class DashboardSection < ActiveAdmin::Views::Panel

      def build(section)
        @section = section
        super(title, :icon => @section.icon)
        instance_eval &@section.block
      end

      protected

      def title
        translated_name =  I18n.t("active_admin.dashboard_sections.#{@section.name}", :default => @section.name)
        translated_name.to_s.titleize
      end

    end
  end
end
