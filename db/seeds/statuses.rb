Status.create!([
                 {
                   status: 'Want to read',
                   code: 'WR',
                 },
                 {
                   status: 'Currently reading',
                   code: 'CR',
                 },
                 {
                   status: 'Have read',
                   code: 'HR',
                 }
])
puts("#{Status.count} status(es) have been created.")
