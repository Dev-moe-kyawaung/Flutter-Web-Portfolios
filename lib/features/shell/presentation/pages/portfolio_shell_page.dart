import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../widgets/sticky_navbar.dart';
import '../../../hero/presentation/pages/hero_section.dart';
import '../../../about/presentation/pages/about_section.dart';
import '../../../skills/presentation/pages/skills_section.dart';
import '../../../services/presentation/pages/services_section.dart';
import '../../../projects/presentation/pages/projects_section.dart';
import '../../../contact/presentation/pages/contact_section.dart';

class PortfolioShellPage extends StatelessWidget {
  const PortfolioShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: StickyNavbar()),
          SliverToBoxAdapter(
            child: HeroSection(
              name: AppStrings.name,
              role: AppStrings.role,
              location: AppStrings.location,
            ),
          ),
          const SliverToBoxAdapter(child: AboutSection()),
          const SliverToBoxAdapter(child: SkillsSection()),
          const SliverToBoxAdapter(child: ServicesSection()),
          const SliverToBoxAdapter(child: ProjectsSection()),
          const SliverToBoxAdapter(child: ContactSection()),
        ],
      ),
    );
  }
}
