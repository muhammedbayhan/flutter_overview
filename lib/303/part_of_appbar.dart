part of "./part_of_learn.dart";



class _PartOfAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _PartOfAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("HELLO",style: TextStyle(color: Colors.white),),
      centerTitle: true,
      actions: [Icon(Icons.notification_important)],
      leading: Icon(Icons.grid_view_rounded),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
