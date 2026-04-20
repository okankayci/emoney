part of '../branch_view.dart';

class BrachsList extends StatelessWidget with BrachData {
  BrachsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: branches.length,
        separatorBuilder: (context, index) => context.normalDivider,
        itemBuilder: (context, index) {
          final branch = branches[index];
          return ListTile(
            leading: SvgPicture.asset(
              context.ic36,
              colorFilter: ColorFilter.mode(
                context.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text(branch['name']!, style: context.title),
            trailing: Text(branch['distance']!, style: context.caption),
          );
        },
      ),
    );
  }
}
