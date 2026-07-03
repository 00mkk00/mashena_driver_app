// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mashena_driver_app/core/theme/app_colors.dart';
// import 'package:mashena_driver_app/core/theme/app_radius.dart';
// import 'package:mashena_driver_app/core/theme/app_shadows.dart';
// import 'package:mashena_driver_app/core/theme/app_spacing.dart';
// import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

// // ─── Notification Type ────────────────────────────────────────────────────────
// enum _NotifType { trip, payment, system, promo }

// // ─── Notification Model ───────────────────────────────────────────────────────
// class _NotifItem {
//   final String id;
//   final _NotifType type;
//   final String title;
//   final String body;
//   final String time;
//   bool isRead;

//   _NotifItem({
//     required this.id,
//     required this.type,
//     required this.title,
//     required this.body,
//     required this.time,
//     this.isRead = false,
//   });
// }

// // ─── Dummy Data ───────────────────────────────────────────────────────────────
// final _dummyNotifications = [
//   _NotifItem(
//     id: '1',
//     type: _NotifType.trip,
//     title: 'New Ride Request',
//     body: 'A passenger is requesting a ride from Al Tahrir Square.',
//     time: 'Just now',
//     isRead: false,
//   ),
//   _NotifItem(
//     id: '2',
//     type: _NotifType.payment,
//     title: 'Payment Received',
//     body: 'EGP 85.00 has been added to your wallet for trip #4821.',
//     time: '10 min ago',
//     isRead: false,
//   ),
//   _NotifItem(
//     id: '3',
//     type: _NotifType.system,
//     title: 'Documents Approved',
//     body: 'Your driver documents have been verified. You can now go online.',
//     time: '1 hour ago',
//     isRead: false,
//   ),
//   _NotifItem(
//     id: '4',
//     type: _NotifType.payment,
//     title: 'Withdrawal Successful',
//     body: 'EGP 500.00 has been transferred to your bank account.',
//     time: '3 hours ago',
//     isRead: true,
//   ),
//   _NotifItem(
//     id: '5',
//     type: _NotifType.promo,
//     title: 'Weekend Bonus 🎉',
//     body: 'Complete 10 trips this weekend and earn an extra EGP 150 bonus!',
//     time: 'Yesterday',
//     isRead: true,
//   ),
//   _NotifItem(
//     id: '6',
//     type: _NotifType.trip,
//     title: 'Trip Completed',
//     body: 'Your trip #4820 has been completed. Passenger rated you 5 stars.',
//     time: 'Yesterday',
//     isRead: true,
//   ),
//   _NotifItem(
//     id: '7',
//     type: _NotifType.system,
//     title: 'App Update Available',
//     body:
//         'A new version of Mashena is available. Update now for the best experience.',
//     time: '2 days ago',
//     isRead: true,
//   ),
//   _NotifItem(
//     id: '8',
//     type: _NotifType.promo,
//     title: 'Refer & Earn',
//     body:
//         'Invite a friend to join Mashena as a driver and earn EGP 100 for each referral.',
//     time: '3 days ago',
//     isRead: true,
//   ),
// ];

// // ─── Notifications View ───────────────────────────────────────────────────────
// class NotificationsView extends StatefulWidget {
//   const NotificationsView({super.key});

//   @override
//   State<NotificationsView> createState() => _NotificationsViewState();
// }

// class _NotificationsViewState extends State<NotificationsView>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final List<_NotifItem> _notifications = List.from(_dummyNotifications);

//   int get _unreadCount => _notifications.where((n) => !n.isRead).length;

//   List<_NotifItem> get _allNotifs => _notifications;
//   List<_NotifItem> get _unreadNotifs =>
//       _notifications.where((n) => !n.isRead).toList();

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   void _markAllRead() {
//     setState(() {
//       for (final n in _notifications) {
//         n.isRead = true;
//       }
//     });
//   }

//   void _markRead(String id) {
//     setState(() {
//       _notifications.firstWhere((n) => n.id == id).isRead = true;
//     });
//   }

//   void _deleteNotif(String id) {
//     setState(() {
//       _notifications.removeWhere((n) => n.id == id);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.lightScaffold,
//       appBar: AppBar(
//         backgroundColor: AppColors.lightScaffold,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios_new_rounded,
//             size: 20.r,
//             color: AppColors.onSurface,
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Notifications', style: AppTextStyles.w600_18),
//             if (_unreadCount > 0) ...[
//               SizedBox(width: AppSpacing.xs.w),
//               _UnreadBadge(count: _unreadCount),
//             ],
//           ],
//         ),
//         centerTitle: true,
//         actions: [
//           if (_unreadCount > 0)
//             TextButton(
//               onPressed: _markAllRead,
//               child: Text(
//                 'Mark all read',
//                 style: AppTextStyles.w500_12.copyWith(
//                   color: AppColors.primaryColor,
//                 ),
//               ),
//             ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(48.h),
//           child: _NotifTabBar(controller: _tabController),
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           // ── All ──────────────────────────────────────────────────
//           _NotifList(
//             notifications: _allNotifs,
//             onMarkRead: _markRead,
//             onDelete: _deleteNotif,
//           ),
//           // ── Unread ───────────────────────────────────────────────
//           _unreadNotifs.isEmpty
//               ? const _EmptyState()
//               : _NotifList(
//                   notifications: _unreadNotifs,
//                   onMarkRead: _markRead,
//                   onDelete: _deleteNotif,
//                 ),
//         ],
//       ),
//     );
//   }
// }

// // ─── Tab Bar ──────────────────────────────────────────────────────────────────
// class _NotifTabBar extends StatelessWidget {
//   final TabController controller;
//   const _NotifTabBar({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w, vertical: 6.h),
//       height: 40.h,
//       decoration: BoxDecoration(
//         color: AppColors.surfaceVariant,
//         borderRadius: BorderRadius.circular(AppRadius.full.r),
//       ),
//       child: TabBar(
//         controller: controller,
//         indicator: BoxDecoration(
//           color: AppColors.primaryColor,
//           borderRadius: BorderRadius.circular(AppRadius.full.r),
//         ),
//         indicatorSize: TabBarIndicatorSize.tab,
//         dividerColor: Colors.transparent,
//         labelStyle: AppTextStyles.w600_12,
//         unselectedLabelStyle: AppTextStyles.w400_10,
//         labelColor: Colors.white,
//         unselectedLabelColor: AppColors.onSurfaceVariant,
//         tabs: const [
//           Tab(text: 'All'),
//           Tab(text: 'Unread'),
//         ],
//       ),
//     );
//   }
// }

// // ─── Notification List ────────────────────────────────────────────────────────
// class _NotifList extends StatelessWidget {
//   final List<_NotifItem> notifications;
//   final void Function(String id) onMarkRead;
//   final void Function(String id) onDelete;

//   const _NotifList({
//     required this.notifications,
//     required this.onMarkRead,
//     required this.onDelete,
//   });

//   @override
//   Widget build(BuildContext context) {
//     if (notifications.isEmpty) return const _EmptyState();

//     // Group by date label (naive grouping using the time field)
//     final today = notifications
//         .where(
//           (n) =>
//               n.time == 'Just now' ||
//               n.time.contains('min') ||
//               n.time.contains('hour'),
//         )
//         .toList();
//     final yesterday = notifications
//         .where((n) => n.time == 'Yesterday')
//         .toList();
//     final older = notifications
//         .where((n) => n.time != 'Yesterday' && !today.contains(n))
//         .toList();

//     return ListView(
//       padding: EdgeInsets.symmetric(
//         horizontal: AppSpacing.md.w,
//         vertical: AppSpacing.sm.h,
//       ),
//       children: [
//         if (today.isNotEmpty) ...[
//           _DateLabel(label: 'Today'),
//           ...today.map(
//             (n) =>
//                 _NotifCard(item: n, onMarkRead: onMarkRead, onDelete: onDelete),
//           ),
//         ],
//         if (yesterday.isNotEmpty) ...[
//           _DateLabel(label: 'Yesterday'),
//           ...yesterday.map(
//             (n) =>
//                 _NotifCard(item: n, onMarkRead: onMarkRead, onDelete: onDelete),
//           ),
//         ],
//         if (older.isNotEmpty) ...[
//           _DateLabel(label: 'Earlier'),
//           ...older.map(
//             (n) =>
//                 _NotifCard(item: n, onMarkRead: onMarkRead, onDelete: onDelete),
//           ),
//         ],
//         SizedBox(height: AppSpacing.md.h),
//       ],
//     );
//   }
// }

// // ─── Date Label ───────────────────────────────────────────────────────────────
// class _DateLabel extends StatelessWidget {
//   final String label;
//   const _DateLabel({required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: AppSpacing.md.h, bottom: AppSpacing.xs.h),
//       child: Text(
//         label,
//         style: AppTextStyles.w600_12.copyWith(color: AppColors.textGrey),
//       ),
//     );
//   }
// }

// // ─── Notification Card ────────────────────────────────────────────────────────
// class _NotifCard extends StatelessWidget {
//   final _NotifItem item;
//   final void Function(String) onMarkRead;
//   final void Function(String) onDelete;

//   const _NotifCard({
//     required this.item,
//     required this.onMarkRead,
//     required this.onDelete,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final config = _NotifConfig.from(item.type);

//     return Dismissible(
//       key: ValueKey(item.id),
//       direction: DismissDirection.endToStart,
//       background: _DismissBackground(),
//       onDismissed: (_) => onDelete(item.id),
//       child: GestureDetector(
//         onTap: () {
//           if (!item.isRead) onMarkRead(item.id);
//         },
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 200),
//           margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
//           decoration: BoxDecoration(
//             color: item.isRead ? AppColors.cardLight : config.unreadBg,
//             borderRadius: BorderRadius.circular(AppRadius.md.r),
//             boxShadow: AppShadows.card,
//             border: item.isRead
//                 ? null
//                 : Border.all(
//                     color: config.color.withValues(alpha: 0.2),
//                     width: 1,
//                   ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(AppSpacing.md.r),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // ── Icon ────────────────────────────────────────────
//                 Container(
//                   width: 44.r,
//                   height: 44.r,
//                   decoration: BoxDecoration(
//                     color: item.isRead
//                         ? config.surface
//                         : config.color.withValues(alpha: 0.15),
//                     borderRadius: BorderRadius.circular(AppRadius.sm.r),
//                   ),
//                   child: Icon(config.icon, size: 22.r, color: config.color),
//                 ),
//                 SizedBox(width: AppSpacing.md.w),

//                 // ── Content ─────────────────────────────────────────
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               item.title,
//                               style:
//                                   (item.isRead
//                                           ? AppTextStyles.w500_14
//                                           : AppTextStyles.w600_14)
//                                       .copyWith(color: AppColors.onSurface),
//                             ),
//                           ),
//                           if (!item.isRead)
//                             Container(
//                               width: 8.r,
//                               height: 8.r,
//                               decoration: BoxDecoration(
//                                 color: config.color,
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                         ],
//                       ),
//                       SizedBox(height: 3.h),
//                       Text(
//                         item.body,
//                         style: AppTextStyles.w400_12.copyWith(
//                           color: item.isRead
//                               ? AppColors.textGrey
//                               : AppColors.onSurfaceVariant,
//                           height: 1.4,
//                         ),
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(height: AppSpacing.xs.h),
//                       Text(
//                         item.time,
//                         style: AppTextStyles.w400_10.copyWith(
//                           color: AppColors.textGrey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ─── Dismiss Background ───────────────────────────────────────────────────────
// class _DismissBackground extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
//       decoration: BoxDecoration(
//         color: AppColors.danger,
//         borderRadius: BorderRadius.circular(AppRadius.md.r),
//       ),
//       alignment: Alignment.centerRight,
//       padding: EdgeInsets.only(right: AppSpacing.lg.w),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.delete_rounded, color: Colors.white, size: 22.r),
//           SizedBox(height: 2.h),
//           Text(
//             'Delete',
//             style: AppTextStyles.w400_10.copyWith(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─── Unread Badge ─────────────────────────────────────────────────────────────
// class _UnreadBadge extends StatelessWidget {
//   final int count;
//   const _UnreadBadge({required this.count});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
//       decoration: BoxDecoration(
//         color: AppColors.danger,
//         borderRadius: BorderRadius.circular(AppRadius.full.r),
//       ),
//       child: Text(
//         count > 9 ? '9+' : '$count',
//         style: AppTextStyles.w700_10.copyWith(color: Colors.white),
//       ),
//     );
//   }
// }

// // ─── Empty State ──────────────────────────────────────────────────────────────
// class _EmptyState extends StatelessWidget {
//   const _EmptyState();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 80.r,
//             height: 80.r,
//             decoration: BoxDecoration(
//               color: AppColors.primarySurface,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               Icons.notifications_off_outlined,
//               size: 36.r,
//               color: AppColors.primaryColor,
//             ),
//           ),
//           SizedBox(height: AppSpacing.md.h),
//           Text(
//             'No notifications yet',
//             style: AppTextStyles.w600_16.copyWith(color: AppColors.onSurface),
//           ),
//           SizedBox(height: AppSpacing.xs.h),
//           Text(
//             'You\'re all caught up!',
//             style: AppTextStyles.w400_14.copyWith(color: AppColors.textGrey),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─── Notif Config ─────────────────────────────────────────────────────────────
// class _NotifConfig {
//   final IconData icon;
//   final Color color;
//   final Color surface;
//   final Color unreadBg;

//   const _NotifConfig({
//     required this.icon,
//     required this.color,
//     required this.surface,
//     required this.unreadBg,
//   });

//   factory _NotifConfig.from(_NotifType type) {
//     switch (type) {
//       case _NotifType.trip:
//         return _NotifConfig(
//           icon: Icons.directions_car_rounded,
//           color: AppColors.primaryColor,
//           surface: AppColors.primarySurface,
//           unreadBg: const Color(0xFFF3F2FE),
//         );
//       case _NotifType.payment:
//         return _NotifConfig(
//           icon: Icons.account_balance_wallet_rounded,
//           color: AppColors.earning,
//           surface: AppColors.earningSurface,
//           unreadBg: const Color(0xFFE8F5F3),
//         );
//       case _NotifType.system:
//         return _NotifConfig(
//           icon: Icons.info_rounded,
//           color: AppColors.info,
//           surface: AppColors.infoSurface,
//           unreadBg: const Color(0xFFEDF3FC),
//         );
//       case _NotifType.promo:
//         return _NotifConfig(
//           icon: Icons.local_offer_rounded,
//           color: AppColors.warning,
//           surface: AppColors.warningSurface,
//           unreadBg: const Color(0xFFFFF8EC),
//         );
//     }
//   }
// }
