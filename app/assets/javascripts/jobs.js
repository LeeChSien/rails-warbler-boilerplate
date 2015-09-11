(function() {
  angularApplication.module('jobsApp',
    ['angularMoment'])

  .run(function(amMoment) {
    amMoment.changeLocale('zh-tw');
  })

  .controller('jobsCtrl', ['$scope', '$http', '$interval',
    function($scope, $http, $interval) {
      $scope.interact = false;
      $scope.jobs = [];

      $scope.create_job = function() {
        $scope.interact = true;
        $http.get(Routes.create_job_path()).success(function(data) {
          $scope.interact = false;
          $scope.jobs = data.jobs;
        });
      };

      $scope.delete_all_jobs = function() {
        $scope.interact = true;
        $http.delete(Routes.delete_all_jobs_path()).success(function(data) {
          $scope.interact = false;
          $scope.jobs = data.jobs;
        });
      };

      // Polling
      $interval(function() {
        $http.get(Routes.list_jobs_path()).success(function(data) {
          $scope.jobs = data.jobs;
        });
      }, 3000);
    }
  ]);
})();
