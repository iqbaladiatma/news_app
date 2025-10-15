import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class LoadingShimmer extends StatefulWidget {
  @override
  _LoadingShimmerState createState() => _LoadingShimmerState();
}

class _LoadingShimmerState extends State<LoadingShimmer>
    with TickerProviderStateMixin {
  late AnimationController _shimmerController;
  late AnimationController _fadeController;
  late Animation<double> _shimmerAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    
    _shimmerController = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();

    _fadeController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _shimmerAnimation = Tween<double>(
      begin: -1.0, 
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _shimmerController, 
      curve: Curves.easeInOutSine,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0, 
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController, 
      curve: Curves.easeOut,
    ));

    _fadeController.forward();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              gradient: AppColors.cardGradient,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: AppColors.border,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 15,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Modern Image shimmer with gradient effect
                AnimatedBuilder(
                  animation: _shimmerAnimation,
                  builder: (context, child) {
                    return Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(-1.0 + _shimmerAnimation.value, 0.0),
                          end: Alignment(1.0 + _shimmerAnimation.value, 0.0),
                          colors: [
                            AppColors.divider.withOpacity(0.3),
                            AppColors.divider.withOpacity(0.8),
                            AppColors.divider.withOpacity(0.3),
                          ],
                          stops: [0.0, 0.5, 1.0],
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Subtle pattern overlay
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    AppColors.background.withOpacity(0.1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Shimmer badge placeholder
                          Positioned(
                            top: 16,
                            left: 16,
                            child: Container(
                              width: 80,
                              height: 28,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Time badge shimmer
                      AnimatedBuilder(
                        animation: _shimmerAnimation,
                        builder: (context, child) {
                          return Container(
                            height: 24,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment(-1.0 + _shimmerAnimation.value, 0.0),
                                end: Alignment(1.0 + _shimmerAnimation.value, 0.0),
                                colors: [
                                  AppColors.background,
                                  AppColors.divider,
                                  AppColors.background,
                                ],
                                stops: [0.0, 0.5, 1.0],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 16),

                      // Title shimmer with staggered animation
                      AnimatedBuilder(
                        animation: _shimmerAnimation,
                        builder: (context, child) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value, 0.0),
                                    colors: [
                                      AppColors.divider.withOpacity(0.5),
                                      AppColors.divider,
                                      AppColors.divider.withOpacity(0.5),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 20,
                                width: MediaQuery.of(context).size.width * 0.65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value * 0.8, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value * 0.8, 0.0),
                                    colors: [
                                      AppColors.divider.withOpacity(0.5),
                                      AppColors.divider,
                                      AppColors.divider.withOpacity(0.5),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 12),

                      // Description shimmer
                      AnimatedBuilder(
                        animation: _shimmerAnimation,
                        builder: (context, child) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 16,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value * 1.2, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value * 1.2, 0.0),
                                    colors: [
                                      AppColors.divider.withOpacity(0.3),
                                      AppColors.divider.withOpacity(0.7),
                                      AppColors.divider.withOpacity(0.3),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                              SizedBox(height: 6),
                              Container(
                                height: 16,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value * 1.4, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value * 1.4, 0.0),
                                    colors: [
                                      AppColors.divider.withOpacity(0.3),
                                      AppColors.divider.withOpacity(0.7),
                                      AppColors.divider.withOpacity(0.3),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 16),

                      // Read more button shimmer
                      AnimatedBuilder(
                        animation: _shimmerAnimation,
                        builder: (context, child) {
                          return Row(
                            children: [
                              Container(
                                height: 28,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value * 0.6, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value * 0.6, 0.0),
                                    colors: [
                                      AppColors.primary.withOpacity(0.1),
                                      AppColors.primary.withOpacity(0.3),
                                      AppColors.primary.withOpacity(0.1),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.0 + _shimmerAnimation.value * 0.4, 0.0),
                                    end: Alignment(1.0 + _shimmerAnimation.value * 0.4, 0.0),
                                    colors: [
                                      AppColors.textHint.withOpacity(0.1),
                                      AppColors.textHint.withOpacity(0.3),
                                      AppColors.textHint.withOpacity(0.1),
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}