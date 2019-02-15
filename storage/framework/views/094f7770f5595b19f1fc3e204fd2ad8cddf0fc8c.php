<?php $__env->startSection('title', '首页'); ?>

<?php $__env->startSection('css'); ?>
  <link href="<?php echo e(loadEdition('/admin/css/pxgridsicons.min.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
  <div class="row state-overview">

  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>