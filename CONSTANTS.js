const academic = {
    departments: {
        names: [
            "Computer Science",
            "Mathematics",
            "Physics",
            "Chemistry",
            "Biology",
            "History",
            "English",
            "Philosophy",
            "Economics",
            "Psychology",
            "Political Science",
            "Sociology",
            "Art",
            "Music",
            "Engineering",
            "Environmental Science",
            "Education",
            "Business Administration",
            "Law",
            "Medicine"
        ],
        buildings: [
            "Newton Hall",
            "Einstein Building",
            "Curie Laboratory",
            "Darwin Center",
            "Shakespeare Hall",
            "Plato Tower",
            "Adams Hall",
            "Jefferson Building",
            "Franklin Lab",
            "Tesla Center",
            "Turing Wing",
            "Edison Block",
            "Galileo Annex",
            "Aristotle Hall",
            "Hawking Complex",
            "Lincoln Hall",
            "Roosevelt Building",
            "Hamilton Tower",
            "Da Vinci Center",
            "Copernicus Hall"
        ]
    },

    programs: {
        programNames: [
            "Computer Science",
            "Software Engineering",
            "Information Technology",
            "Mathematics",
            "Statistics",
            "Physics",
            "Chemistry",
            "Biology",
            "Environmental Science",
            "Psychology",
            "Political Science",
            "Economics",
            "Business Administration",
            "Finance",
            "Marketing",
            "History",
            "Philosophy",
            "English Literature",
            "Fine Arts",
            "Music Theory",
            "Civil Engineering",
            "Mechanical Engineering",
            "Electrical Engineering",
            "Law",
            "Medicine",
            "Nursing",
            "Education",
            "Linguistics",
            "Sociology",
            "Anthropology"
        ],
        degreeLevels: ["Bachelors", "Masters", "PhD"],
        durationYears: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        // department_id will reference academic.departments ids
    },

    students: {
        firstNames: [
            "Alice", "Bob", "Charlie", "Diana", "Ethan",
            "Fiona", "George", "Hannah", "Isaac", "Julia",
            "Kevin", "Laura", "Michael", "Nina", "Oliver",
            "Paula", "Quentin", "Rachel", "Samuel", "Tina"
        ],
        lastNames: [
            "Smith", "Johnson", "Williams", "Brown", "Jones",
            "Garcia", "Miller", "Davis", "Rodriguez", "Martinez",
            "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson",
            "Taylor", "Moore", "Jackson", "Martin", "Lee"
        ],
        genders: ["M", "F", "O"],
        emails: [
            "alice@example.com", "bob@example.com", "charlie@example.com",
            "diana@example.com", "ethan@example.com", "fiona@example.com",
            "george@example.com", "hannah@example.com", "isaac@example.com",
            "julia@example.com", "kevin@example.com", "laura@example.com",
            "michael@example.com", "nina@example.com", "oliver@example.com",
            "paula@example.com", "quentin@example.com", "rachel@example.com",
            "samuel@example.com", "tina@example.com"
        ],
        phones: [
            "+1-202-555-0111", "+1-202-555-0122", "+1-202-555-0133",
            "+1-202-555-0144", "+1-202-555-0155", "+1-202-555-0166",
            "+1-202-555-0177", "+1-202-555-0188", "+1-202-555-0199",
            "+1-202-555-0200", "+1-202-555-0211", "+1-202-555-0222",
            "+1-202-555-0233", "+1-202-555-0244", "+1-202-555-0255",
            "+1-202-555-0266", "+1-202-555-0277", "+1-202-555-0288",
            "+1-202-555-0299", "+1-202-555-0300"
        ],
        dobs: [
            "1995-03-15", "1996-07-22", "1997-11-05", "1998-01-30", "1999-06-12",
            "2000-09-18", "2001-02-25", "2002-12-10", "2003-05-08", "2004-08-21"
        ],
        enrollmentYears: [
            2005, 2006, 2007, 2008, 2009, 2010,
            2011, 2012, 2013, 2014, 2015,
            2016, 2017, 2018, 2019, 2020,
            2021, 2022, 2023, 2024
        ]
        // program_id → reference academic.programs.program_id
    }
};


const library = {

    books: {
        titles: [
            "The Silent Dawn",
            "Echoes of Eternity",
            "Shadows of the Mind",
            "Whispers in the Wind",
            "The Last Horizon",
            "Fragments of Time",
            "Beyond the Veil",
            "The Forgotten Realm",
            "Waves of Destiny",
            "Path of Ashes",
            "Rise of the Phoenix",
            "The Crimson Oath",
            "Edge of Tomorrow",
            "Legends of the Night",
            "Secrets of the Deep",
            "The Glass Kingdom",
            "Moonlight Sonata",
            "Storms of Fate",
            "The Eternal Flame",
            "Dreams of Steel"
        ],
        isbns: [
            "978-0-123456-47-2",
            "978-1-234567-89-7",
            "978-0-321654-98-3",
            "978-1-876543-21-0",
            "978-0-456123-78-9",
            "978-1-147852-36-5",
            "978-0-951357-24-8",
            "978-1-753951-28-9",
            "978-0-852963-47-5",
            "978-1-951357-62-3",
            "978-0-369258-14-6",
            "978-1-741852-93-0",
            "978-0-852369-45-2",
            "978-1-654987-31-8",
            "978-0-963852-74-1",
            "978-1-357951-46-9",
            "978-0-147258-39-2",
            "978-1-258369-74-0",
            "978-0-951753-68-7",
            "978-1-357159-62-5"
        ],
        publishers: [
            "HarperCollins",
            "Penguin Random House",
            "Simon & Schuster",
            "Macmillan",
            "Hachette",
            "Oxford University Press",
            "Cambridge University Press",
            "Springer",
            "Wiley",
            "Pearson",
            "Bloomsbury",
            "Scholastic",
            "Vintage Books",
            "Pan Macmillan",
            "Cengage Learning",
            "Routledge",
            "McGraw-Hill",
            "Elsevier",
            "SAGE Publications",
            "MIT Press"
        ],
        publishedYears: [
            1950, 1965, 1978, 1984, 1992, 1999,
            2001, 2005, 2010, 2015, 2018, 2020,
            2021, 2022, 2023
        ],
        totalCopies: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    }

    ,

    authors: {
        firstNames: [
            "Alice",
            "Bob",
            "Charlie",
            "Diana",
            "Evelyn",
            "Frank",
            "Grace",
            "Henry",
            "Isabella",
            "Jack",
            "Karen",
            "Liam",
            "Mia",
            "Noah",
            "Olivia",
            "Paul",
            "Quinn",
            "Ryan",
            "Sophia",
            "Thomas"
        ],
        lastNames: [
            "Smith",
            "Johnson",
            "Williams",
            "Brown",
            "Jones",
            "Garcia",
            "Miller",
            "Davis",
            "Rodriguez",
            "Martinez",
            "Hernandez",
            "Lopez",
            "Gonzalez",
            "Wilson",
            "Anderson",
            "Taylor",
            "Moore",
            "Jackson",
            "Martin",
            "Lee"
        ]
    }
};
